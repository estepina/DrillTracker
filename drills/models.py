from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    pass

class Drill(models.Model):
    name = models.CharField(max_length=255)
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name="drills")