
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render

from .models import (Alumni, Announcement, Article, ArticleFile, Collaborator,
                     Committee, Counter, Event, Gallery, Group, Member, Page,
                     Program, Research, Resource, Slider, Testimonial, PhotoGallery, PhotoFile, Publication, NewsCategory, News, NewsImage)


def home(request):
    posts = News.objects.all().order_by('-publish')[:3]
    notices = Announcement.objects.all().order_by('-publish')[:2]
    centers = Group.objects.all().order_by('name').values()
    sliders = Slider.objects.all().order_by('order').values()
    testimonials = Testimonial.objects.all().order_by('order').values()
    collaborators = Collaborator.objects.all().order_by('name').values()
    counters = Counter.objects.all().order_by('-publish').values()
    events = Event.objects.all().order_by('event_date')[:1]
    publications = Publication.objects.all().order_by('-publish')[:6]
    return render(request,'home.html', {'posts': posts, 'notices':notices, 'centers':centers, 'sliders':sliders, 'collaborators':collaborators, 'testimonials':testimonials, 'counters':counters, 'events':events, 'publications':publications, 'home_page': 'active'})
    #return HttpResponse("Home")

def alumni(request):
    alumnis = Alumni.objects.all().order_by('std_id').values()
    return render(request,'alumni.html', {'alumnis': alumnis, 'allumni': 'active'})
    #return HttpResponse("Home")

def admission(request):
    #contents = get_object_or_404(Page,title="Message")
    return render(request,'admission.html')

#def overview(request):
#    contents = get_object_or_404(Page,title="Overview")
#    return render(request,'program.html',{'content':contents, 'overview': 'active'})
def commonpage(request, title):
    contents = get_object_or_404(Page,pagename=title)
    return render(request, 'program.html',{'content':contents})

def message(request):
    contents = get_object_or_404(Page,title="Message")
    return render(request,'message.html',{'contents':contents, 'message': 'active'})

def mission(request):
    return render(request,'mission.html',{'mission': 'active'})

def groups(request):
    centers = Group.objects.all().order_by('name').values()
    return render(request,'groups.html',{'centers':centers, 'groups': 'active'})

def publications(request):
    contents = get_object_or_404(Page,pagename="Publications")
    return render(request,'publications.html',{'contents':contents, 'publications': 'active'})

def committee(request):
    committees = Committee.objects.all().order_by('id').values()
    return render(request,'committee.html', {'committees': committees, 'committee': 'active'})

def program(request, title):
    contents = get_object_or_404(Program,url=title)
    return render(request,'program.html', {'content': contents, title: 'active'})

def faculty(request):
    #faculties = Member.objects.all().exclude(type="staff").order_by('order').values()
    #faculties = Member.objects.filter(type="fulltime")
    faculties = Member.objects.all().order_by('order').values()
    return render(request,'faculty.html', {'faculties': faculties, 'pfaculty': 'active'})
    #return HttpResponse("Home")

def staff(request):
    faculties = Member.objects.filter(type="staff").order_by('order').values()
    return render(request,'staff.html', {'faculties': faculties, 'staff': 'active'})
    #return render(request,'faculty.html')
    #return HttpResponse("Staff")

def all(request):
    articles = News.objects.all().order_by('-publish')
    return render(request,'all.html', {'articles': articles})
    #return HttpResponse("Staff")

def article(request, id):
    contents = get_object_or_404(News,id=id)
    posts = News.objects.all().order_by('-publish')[:5]
    return render(request,'article.html', {'content': contents, 'posts': posts})
    #return HttpResponse("Staff")

def events(request):
    events = Event.objects.all().order_by('event_date')
    posts = Article.objects.all().order_by('-publish')[:5]
    return render(request,'events.html', {'events': events, 'posts': posts})
    #return HttpResponse("Staff")

def event(request, id):
    contents = get_object_or_404(Event,id=id)
    events = Event.objects.all().order_by('-event_date')[:5]
    posts = Article.objects.all().order_by('-publish')[:2]
    return render(request,'event.html', {'content': contents, 'posts': posts, 'events': events})

def notice(request):
    notices = Announcement.objects.all().order_by('-publish').values()
    return render(request,'notice.html', {'notices': notices})

def researches(request):
    articles = Research.objects.all().order_by('-publish')
    return render(request,'researches.html', {'articles': articles, 'research': 'active'})
    #return HttpResponse("Staff")

def research(request, id):
    contents = get_object_or_404(Research,id=id)
    posts = Research.objects.all().order_by('-publish')[:4]
    return render(request,'research.html', {'content': contents, 'posts': posts, 'research': 'active'})
    #return HttpResponse("Staff")

def researchpage(request):
    #contents = get_object_or_404(Page,title="Message")
    return render(request,'research_page.html')

def resources(request, type):
    if type != 'student':
        resources = Resource.objects.filter(category=type).order_by('title')
        return render(request,'resources.html', {'resources': resources, 'homepage': type, type: 'active'})
    else:
        eee400 = Resource.objects.filter(type='EEE/ETE 400').order_by('title')
        eee498 = Resource.objects.filter(type='EEE/ETE 498').order_by('title')
        eee497 = Resource.objects.filter(type='EEE/ETE 497/499').order_by('title')
        other = Resource.objects.filter(type='OTHER FORMS').order_by('title')
        return render(request,'resources.html', {'eee400': eee400, 'eee498': eee498, 'eee497': eee497, 'other': other, 'homepage': type, type: 'active'})

    #return HttpResponse(type)

def gallery(request):
    photos = PhotoGallery.objects.all().order_by('-publish')
    return render(request,'photogallery.html', {'photos': photos, 'gallery': 'active'})

def publication(request):
    publications = Publication.objects.all().order_by('-name')
    return render(request,'publication.html', {'publications': publications})

def photos(request, id):
    contents = get_object_or_404(PhotoGallery,id=id)
    #contents = PhotoGallery.objects.all().order_by('-publish')[:5]
    return render(request,'gallery.html', {'content': contents})

def contact(request):
    #photos = Gallery.objects.all().order_by('-publish')
    return render(request,'contact.html')

def test(request, title):
    contents = get_object_or_404(Page,pagename=title)
    return render(request, 'test.html',{'content':contents})
    #return HttpResponse("Staff")
