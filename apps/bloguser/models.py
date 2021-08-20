from django.db import models
from django.contrib.auth.base_user import AbstractBaseUser, BaseUserManager
from django.contrib.auth.models import PermissionsMixin
from shortuuidfield import ShortUUIDField
import datetime


class UserManager(BaseUserManager):
    def _create_user(self, email, username, password, **kwargs):
        if not email:
            raise ValueError('Email required')
        if not username:
            raise ValueError('Username required')
        if not password:
            raise ValueError('password required')

        user = self.model(email=email, username=username, **kwargs)
        user.set_password(password)
        user.save()
        return user

    def create_user(self, email, username, password, **kwargs):
        kwargs.setdefault('is_staff', False)
        kwargs.setdefault('is_superuser', False)
        return self._create_user(email, username, password, **kwargs)

        # 新增加的方法，用来创建 staff user。
    def create_staffuser(self, email, username, password, **kwargs):
        kwargs.setdefault('is_staff', True)
        kwargs.setdefault('is_superuser', False)
        return self._create_user(email, username, password, **kwargs)

    def create_superuser(self, email, username, password, **kwargs):
        kwargs.setdefault('is_staff', True)
        kwargs.setdefault('is_superuser', True)
        return self._create_user(email, username, password, **kwargs)


class User(AbstractBaseUser, PermissionsMixin):
    uid = ShortUUIDField(primary_key=True)
    email = models.EmailField(unique=True)
    username = models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    data_joined = models.DateTimeField(auto_now_add=True)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']
    EMAIL_FIELD = 'email'

    objects = UserManager()


class UserVisit(models.Model):
    ip_address = models.CharField(max_length=30)
    end_point = models.CharField(default='/', max_length=200)
    create_time = models.DateTimeField(auto_now_add=True)
    day = models.DateField(default=datetime.datetime.now().strftime('%Y-%m-%d'))

    class Meta:
        ordering = ['-create_time']


class TotalVisitNum(models.Model):
    count = models.IntegerField(default=0)


class DailyVisitNum(models.Model):
    day = models.DateField(default=datetime.datetime.now().strftime('%Y-%m-%d'))
    count = models.IntegerField(default=0)
