# Generated by Django 4.1.4 on 2023-01-23 06:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0003_publication_alter_collaborator_photo'),
    ]

    operations = [
        migrations.AddField(
            model_name='counter',
            name='option4',
            field=models.IntegerField(default=0),
        ),
    ]
