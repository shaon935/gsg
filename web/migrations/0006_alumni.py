# Generated by Django 4.1.4 on 2023-02-05 07:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0005_alter_member_photo_alter_news_menuname_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Alumni',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('std_id', models.CharField(max_length=10)),
                ('name', models.CharField(max_length=250)),
                ('cell', models.CharField(max_length=15, verbose_name='Mobile Phone')),
                ('email', models.EmailField(blank=True, max_length=250)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('updated', models.DateTimeField(auto_now=True)),
            ],
            options={
                'ordering': ('-id',),
            },
        ),
    ]
