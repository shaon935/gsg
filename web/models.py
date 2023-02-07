# models
from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.auth.models import User
from django.db import models
from django.utils import timezone
from PIL import Image


# page model
class Page(models.Model):
    pagename = models.CharField(max_length=250)
    title = models.CharField(max_length=250)
    banner = models.ImageField(upload_to='banner/', blank=True)
    #body = models.TextField()
    body=RichTextUploadingField() 
    name = models.CharField(max_length=250, blank=True)
    photo = models.ImageField(upload_to='images/', blank=True)
    phone = models.CharField(max_length=250, blank=True)
    email = models.EmailField(max_length=250, blank=True)
    designation = models.CharField(max_length=250, blank=True)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-publish',)
    
    def __str__(self):
        return self.pagename

# member model
class Member(models.Model):
    TYPE_CHOICES = (
    ('fulltime', 'Fulltime'),
    ('adjunct', 'Adjunct'),
    ('staff', 'Staff'),
    )
    name = models.CharField(max_length=250)
    designation = models.CharField(max_length=250)
    email = models.EmailField(max_length=250)
    photo = models.ImageField('Image (357x355)',upload_to='member/')
    directory = models.CharField(max_length=250, blank=True)
    type = models.CharField(max_length=10,choices=TYPE_CHOICES,default='fulltime')
    order = models.IntegerField()
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    
    class Meta:
        ordering = ('-publish',)
    
    def __str__(self):
        return self.name

# page model
class Committee(models.Model):
    name=RichTextUploadingField() 
    member=RichTextUploadingField() 
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-id',)
    
    def __str__(self):
        return self.name    

# alumni model
class Alumni(models.Model):
    std_id=models.CharField(max_length=10) 
    name=models.CharField(max_length=250)
    cell=models.CharField('Mobile Phone',max_length=15)
    email = models.EmailField(max_length=250, blank=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-id',)
    
    def __str__(self):
        return self.name  


def article_upload_location(instance, filename):
    article_name = instance.article.id
    file_name = filename.lower().replace(" ", "-")
    return "articles/{}/{}".format(article_name, file_name)

class Article(models.Model):
    title = models.CharField(max_length=250)
    body=RichTextUploadingField()
    #foldername = models.CharField('Folder Name', max_length=250)
    url = models.CharField('url, IUB Website', max_length=250, blank = True)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.title)
         
class ArticleFile(models.Model):
    article = models.ForeignKey(Article, on_delete=models.CASCADE) # When a Case is deleted, upload models are also deleted
    image = models.FileField(upload_to=article_upload_location, null = True, blank = True)

class NewsCategory(models.Model):
    name = models.CharField(max_length=255)
    order = models.IntegerField(default=1)

    def __str__(self):
        return self.name

class News(models.Model):
    title = models.CharField(max_length=255)
    category = models.ForeignKey(NewsCategory, on_delete=models.CASCADE)
    menuname = models.CharField(max_length=250)
    body=RichTextUploadingField()
    publish = models.DateTimeField(default=timezone.now)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

class NewsImage(models.Model):
    news = models.ForeignKey(News, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='news_images/')

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)
        if self.image:
            img = Image.open(self.image.file)
            (width, height) = img.size
            ratio = width / height
            new_width = 680
            new_height = int(new_width / ratio)
            img = img.resize((new_width, new_height), Image.ANTIALIAS)
            img.save(self.image.path)

    #def __str__(self):
    #    return self.news.title

def photo_upload_location(instance, filename):
    article_name = instance.photogallery.id
    file_name = filename.lower().replace(" ", "-")
    return "gallery/{}/{}".format(article_name, file_name)

class PhotoGallery(models.Model):
    title = models.CharField(max_length=250)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.title)
         
class PhotoFile(models.Model):
    photogallery = models.ForeignKey(PhotoGallery, on_delete=models.CASCADE)
    image = models.ImageField(upload_to=photo_upload_location, null = True, blank = True)

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)
        if self.image:
            img = Image.open(self.image.file)
            (width, height) = img.size
            ratio = width / height
            new_width = 1000
            new_height = int(new_width / ratio)
            img = img.resize((new_width, new_height), Image.ANTIALIAS)
            img.save(self.image.path)

#event Model
class Event(models.Model):
    title = models.CharField(max_length=250)
    location = models.CharField(max_length=250)
    event_date = models.DateTimeField(default=timezone.now)
    body=RichTextUploadingField()
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-updated',)
        
    def __str__(self):
        return str(self.title)

# Announcement model
class Announcement(models.Model):
    title = models.CharField(max_length=250)
    file = models.FileField(upload_to='notice/')
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    
    class Meta:
        ordering = ('-publish',)
    
    def __str__(self):
        return self.title 

# Publication model
class Publication(models.Model):
    name = models.CharField(max_length=250)
    image = models.ImageField('Cover Image (270x347)', upload_to='publication/')
    file = models.FileField(upload_to='publication/', blank=True)
    link = models.CharField(max_length=250, blank=True)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
 
    def __str__(self):
        return self.name 


# Resource model
class Resource(models.Model):
    TYPE_CHOICES = (
    ('student', 'Student'),
    ('faculty', 'Faculty'),
    ('alumni', 'Alumni'),
    )
    STUDENT_CHOICES = (
    ('Default', 'Default'),
    ('EEE/ETE 400', 'EEE/ETE 400'),
    ('EEE/ETE 498', 'EEE/ETE 498'),
    ('EEE/ETE 497/499', 'EEE/ETE 497/499'),
    ('OTHER FORMS','OTHER FORMS'),
    )
    title = models.CharField(max_length=250)
    category = models.CharField(max_length=10,choices=TYPE_CHOICES,default='Student')
    file = models.FileField(upload_to='resources/', blank = True)
    url = models.CharField(max_length=250, blank = True)
    type = models.CharField(max_length=30,choices=STUDENT_CHOICES,default='Default')
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    
    class Meta:
        ordering = ('-publish',)
    
    def __str__(self):
        return self.title   

# group model
class Group(models.Model):
    name = models.CharField(max_length=250)
    url = models.CharField(max_length=250, blank=True)
    photo = models.ImageField('photo (274x297)',upload_to='group/')
    homephoto = models.ImageField('Homephoto (270x130)',upload_to='group/')
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-publish',)
    
    def __str__(self):
        return self.name

# group collaborator
class Collaborator(models.Model):
    name = models.CharField(max_length=250)
    url = models.CharField(max_length=250, blank=True)
    photo = models.ImageField('Photo (270x130)',upload_to='group/')
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-publish',)
    
    def __str__(self):
        return self.name

class Research(models.Model):
    title = models.CharField(max_length=250)
    initial = models.CharField(max_length=500)
    body = RichTextUploadingField()
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-publish',)
    
    def __str__(self):
        return self.title

class Program(models.Model):
    title = models.CharField(max_length=250)
    body = RichTextUploadingField()
    url = models.CharField(max_length=250, blank=True)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-publish',)
    
    def __str__(self):
        return self.title

class Gallery(models.Model):
    photo = models.ImageField(upload_to='gallery/')
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-publish',)

class Slider(models.Model):
    photo = models.ImageField('Image (1920x780)', upload_to='slider/')
    order = models.IntegerField(default=1)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('order',)

class Testimonial(models.Model):
    name = models.CharField(max_length=50)
    designation = models.CharField(max_length=50)
    body = models.CharField(max_length=120)
    photo = models.ImageField(upload_to='testimonial/')
    order = models.IntegerField()
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('order',)

class Counter(models.Model):
    option1 = models.IntegerField()
    option2 = models.IntegerField()
    option3 = models.IntegerField()
    option4 = models.IntegerField(default=0)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('-publish',)

    


'''
class GalleryAdmin(admin.ModelAdmin):
    list_display = ('id','image_thumbnail')
    readonly_fields = ('image_thumbnail',)

    def image_thumbnail(self, obj):
        return format_html('<img src="{}" width="50" />', obj.photo.url)
    image_thumbnail.short_description = 'Image Thumbnail'

    formfield_overrides = {
        models.ImageField: {'widget': AdminFileWidget},
    }

admin.site.register(Gallery, GalleryAdmin)
'''
'''
class MyModel(models.Model):
    title = models.CharField(max_length=100)
    image = models.ImageField(upload_to='images/')
    # other fields
class MainMenu(models.Model):
    title = models.CharField(max_length=100)
    # other fields

    def __str__(self):
        return self.title

class SubMenu(models.Model):
    title = models.CharField(max_length=100)
    name = models.CharField(max_length=100, default='shaon')
    main_menu = models.ForeignKey(MainMenu, on_delete=models.CASCADE)
    # other fields

    def __str__(self):
        return self.title
#Article Work
def article_upload_location(instance, filename):
    article_name = instance.name.lower().replace(" ", "-")
    file_name = filename.lower().replace(" ", "-")
    return "articles/{}/{}".format(article_name, file_name)

class Article(models.Model):
    title = models.CharField(max_length=250)
    body=RichTextUploadingField()
    name = models.CharField('Name', max_length=250)
    number_folder = models.CharField('Folder Name', max_length=250)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

class ArticleFile(models.Model):
    article = models.ForeignKey(Article, on_delete=models.CASCADE) # When a Case is deleted, upload models are also deleted
    image = models.FileField(upload_to=article_upload_location, null = True, blank = True)

def case_upload_location(instance, filename):
    case_name = instance.case.name
    #case_name="first"
    file_name = filename.lower().replace(" ", "-")
    return "casos/{}/{}".format(case_name, file_name)

class Case(models.Model):
    # datos del caso
    name = models.CharField('Nombre', max_length=250)
    observations = models.TextField('Observaciones', null = True, blank = True)
    number_folder = models.CharField('Numero de Carpeta', max_length=250)

    def __str__(self):
        return self.name 

class CaseFile(models.Model):
    case = models.ForeignKey(Case, on_delete=models.CASCADE) # When a Case is deleted, upload models are also deleted
    file = models.FileField(upload_to=case_upload_location, null = True, blank = True)

'''

    