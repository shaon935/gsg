from django.conf import settings
from django.conf.urls.static import static
from django.urls import path

from . import views

app_name = 'web'

urlpatterns=[
    path('',views.home,name="home"),
    #path('overview',views.overview,name="overview"),
    path('admission',views.admission,name="admission"),
    path('message',views.message,name="message"),
    path('mission',views.mission,name="mission"),
    path('committee',views.committee,name="committee"),
    path('program/<str:title>',views.program,name="program"),
    path('publications',views.publications,name="publications"),
    path('faculty',views.faculty,name="faculty"),
    path('staff',views.staff,name="staff"),
    path('all',views.all,name="all"),
    path('article/<str:id>',views.article,name="article"),
    path('events',views.events,name="events"),
    path('event/<str:id>',views.event,name="event"),
    path('researchpage',views.researchpage,name="researchpage"),
    path('researches',views.researches,name="researches"),
    path('research/<str:id>',views.research,name="research"),
    path('resources/<str:type>',views.resources,name="resources"),
    path('groups',views.groups,name="groups"),
    path('gallery',views.gallery,name="gallery"),
    path('publication',views.publication,name="publication"),
    path('photos/<str:id>',views.photos,name="photos"),
    path('notice',views.notice,name="notice"),
    path('contact',views.contact,name="contact"),
    path('alumni/', views.alumni, name="alumni"),
    path('<str:title>/',views.commonpage,name="commonpage"),
    path('test/<str:title>',views.test,name="test"),
    #path('successful/<str:tid>',views.successful,name="successful"),
]