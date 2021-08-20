import json
from django.shortcuts import redirect
from django.urls import reverse
from django.views.generic import View
from django.http import HttpResponse
from django.shortcuts import render
from apps.cms.forms import PostAddForm
from apps.post.models import Post
import markdown
from apps.cms.forms import PostEditForm
from apps.bloguser.models import User
from apps.post.models import Category
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from apps.post.cache_manager import clear_cache


@method_decorator(login_required, name='post')
class PostView(View):
    def post(self, request):
        # 新建提交
        if 'submit' in request.POST:
            form = PostAddForm(request.POST)
            if form.is_valid():
                title = form.cleaned_data.get('title')
                description = form.cleaned_data.get('description')
                author = form.cleaned_data.get('author')
                thumbnail = form.cleaned_data.get('thumbnail')
                status = form.cleaned_data.get('status')
                content = form.cleaned_data.get('content')
                category = form.cleaned_data.get('category')
                priority = form.cleaned_data.get('priority')
                is_hot = form.cleaned_data.get('is_hot')
                time_id = form.cleaned_data.get('time_id')
                Post.objects.create(title=title, description=description, author=author,
                                    thumbnail=thumbnail, status=status, content=content, category=category,
                                    priority=priority, is_hot=is_hot, time_id=time_id)
                clear_cache('post:index')  # 新添加删除首页缓存
                clear_cache('post:post_list')  # 新添加删除文章列表缓存
                return redirect(reverse("cms:post_manage_view"))
            else:
                return redirect(reverse("cms:post_publish_view"))
        # 修改Post
        elif 'modify' in request.POST:
            form = PostEditForm(request.POST)
            if form.is_valid():
                pk = form.cleaned_data.get('pk')
                title = form.cleaned_data.get('title')
                description = form.cleaned_data.get('description')
                author = form.cleaned_data.get('author')
                thumbnail = form.cleaned_data.get('thumbnail')
                status = form.cleaned_data.get('status')
                content = form.cleaned_data.get('content')
                category = form.cleaned_data.get('category')
                priority = form.cleaned_data.get('priority')
                is_hot = form.cleaned_data.get('is_hot')
                time_id = form.cleaned_data.get('time_id')
                instance = Post.objects.filter(id=pk)
                md = markdown.Markdown(
                    extensions=[
                        # 包含 缩写、表格等常用扩展
                        'markdown.extensions.extra',
                        # 语法高亮扩展
                        'markdown.extensions.codehilite',
                        # 目录扩展
                        'markdown.extensions.toc',
                    ]
                )
                content_html = md.convert(content)
                instance.update(title=title, description=description, author=author,
                                thumbnail=thumbnail, status=status, content=content,
                                category=category, priority=priority, is_hot=is_hot,
                                time_id=time_id, content_html=content_html)
                return redirect(reverse("cms:post_manage_view"))
            else:
                return HttpResponse(content=json.dumps(form.errors.get_json_data()))
        # 修改状态返回
        elif 'back':
            clear_cache('post:index')  # 新添加删除首页缓存
            clear_cache('post:post_list')  # 新添加删除文章列表缓存
            clear_cache('/detail/{}/'.format(time_id))  # 新添加删除文章详情页缓存
            return redirect(reverse("cms:post_manage_view"))
        # 新建状态的取消
        else:
            return redirect(reverse("cms:post_publish_view"))


@method_decorator(login_required, name='get')
class PostEditView(View):
    def get(self, request):
        post_id = request.GET.get('post_id')
        post = Post.objects.get(pk=post_id)
        context = {
            'item_data': post,
            'list_data_category': Category.objects.all(),
            'list_data_user': User.objects.all(),
            'list_data_status': Post.STATUS_ITEMS,
        }
        return render(request, 'cms/post/publish.html', context=context)


@method_decorator(login_required, name='get')
class PostDeleteView(View):
    def get(self, request):
        post_id = request.GET.get('post_id')
        Post.objects.filter(pk=post_id).update(status=Post.STATUS_DELETE)
        clear_cache('post:index')  # 新添加删除首页缓存
        clear_cache('post:post_list') # 新添加删除文章列表缓存
        clear_cache('/detail/{}/'.format(post_id)) # 新添加删除文章详情页缓存
        return redirect(reverse("cms:post_manage_view"))