from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path("drills/", include("drills.urls")),
    path("admin/", admin.site.urls),
]
