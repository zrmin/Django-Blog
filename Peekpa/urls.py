from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('cms/', include('apps.cms.urls')),
    path('account/', include('apps.bloguser.urls')),  # 新添加 BlogUser App URL 文件
    path('', include('apps.post.urls')),
]