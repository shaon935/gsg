from django.contrib import admin
from django.contrib.admin.widgets import AdminFileWidget
from django.utils.html import format_html

from .models import (Alumni, Announcement, Collaborator,
                     Committee, Counter, Event, Group, Member, Page,
                     Program, Research, Resource, Slider, Testimonial, PhotoGallery, PhotoFile, Publication, NewsCategory, News, NewsImage, models)

admin.site.site_header = 'GSG Admin Portal'
admin.site.site_title = 'GSG' # default: "Django site admin"
@admin.register(Page)
class PageAdmin(admin.ModelAdmin):
    list_display = ('title', 'pagename')
    
    def get_readonly_fields(self, request, obj=None):
        if obj:  # obj is not None, so this is an edit
            return ['pagename',]  # Return a list or tuple of read-only fields' names
        else:  # This is an addition
            return []
    #readonly_fields = ('pagename',)

@admin.register(Alumni)
class AlumniAdmin(admin.ModelAdmin):
    list_display = ('std_id', 'name', 'email')

@admin.register(Member)
class MemberAdmin(admin.ModelAdmin):
    list_display = ('name', 'designation', 'type', 'order')

@admin.register(Announcement)
class AnnouncementAdmin(admin.ModelAdmin):
    list_display = ('title', 'file')

@admin.register(Collaborator)
class CollaboratorAdmin(admin.ModelAdmin):
    list_display = ('name', 'url')

@admin.register(Program)
class ProgramAdmin(admin.ModelAdmin):
    list_display = ('title', 'url')

@admin.register(Publication)
class PublicationAdmin(admin.ModelAdmin):
    list_display = ('name',)

@admin.register(Counter)
class CounterAdmin(admin.ModelAdmin):
    list_display = ('option1', 'option2', 'option3', 'option4')

@admin.register(Event)
class EventAdmin(admin.ModelAdmin):
    list_display = ('title', 'event_date' )

class PhotoFileAdmin(admin.StackedInline):
    model = PhotoFile

@admin.register(PhotoGallery)
class PhotoGalleryAdmin(admin.ModelAdmin):
    list_display = ('title', )
    inlines = [PhotoFileAdmin]

class NewsImageInline(admin.TabularInline):
    model = NewsImage
    extra = 1

@admin.register(NewsCategory)
class NewsCategoryAdmin(admin.ModelAdmin):
    list_display = ('name',)

@admin.register(News)
class NewsAdmin(admin.ModelAdmin):
    list_display = ('title', 'category', 'created_at', 'updated_at')
    inlines = [NewsImageInline]

#@admin.register(NewsImage)
#class NewsImageAdmin(admin.ModelAdmin):
#    list_display = ('news', 'image')

class SliderAdmin(admin.ModelAdmin):
    list_display = ('publish','image_thumbnail', 'order')
    readonly_fields = ('image_thumbnail',)

    def image_thumbnail(self, obj):
        return format_html('<img src="{}" height="50" />', obj.photo.url)
    image_thumbnail.short_description = 'Image Thumbnail'

    formfield_overrides = {
        models.ImageField: {'widget': AdminFileWidget},
    }

admin.site.register(Slider, SliderAdmin)

'''
class ArticleFileAdmin(admin.StackedInline):
    model = ArticleFile

@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', )
    inlines = [ArticleFileAdmin]

class GalleryAdmin(admin.ModelAdmin):
    list_display = ('publish','image_thumbnail')
    readonly_fields = ('image_thumbnail',)

    def image_thumbnail(self, obj):
        return format_html('<img src="{}" width="50" />', obj.photo.url)
    image_thumbnail.short_description = 'Image Thumbnail'

    formfield_overrides = {
        models.ImageField: {'widget': AdminFileWidget},
    }

admin.site.register(Gallery, GalleryAdmin)
'''



#@admin.register(ArticleFile)
#class ArticleFileAdmin(admin.ModelAdmin):
#    pass
'''
@admin.register(Gallery)
class GalleryAdmin(admin.ModelAdmin):
    list_display = ('id','photo')
class SubMenuAdmin(admin.ModelAdmin):
    list_display = ('title','main_menu')
    # other options

admin.site.register(SubMenu, SubMenuAdmin)
class CaseFileAdmin(admin.StackedInline):
    model = CaseFile

@admin.register(Case)
class CaseAdmin(admin.ModelAdmin):
    inlines = [CaseFileAdmin]

@admin.register(CaseFile)
class CaseFileAdmin(admin.ModelAdmin):
    pass
'''