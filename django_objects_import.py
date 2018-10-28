# How queries work in django.

import sys
import os
import django

# path of django project.
sys.path.append('path_to_django_project')

## settings.
## deprecated
# from django.core.management import setup_environ
# setup_environ(settings)
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "suorganizer.settings")
from django.conf import settings
# django.setup() # don't need to run this.

###################
# Manager objects.
###################
# organizer is name of an app and import the models.
from organizer import models
# <module 'django.db.models' from '//anaconda/envs/py3/lib/python3.5/site-packages/django/db/models/__init__.py'>

# startup, newslink and tags are models in the organizer app.
from organizer.models import Tag
# <class 'organizer.models.Tag'>

# >>> Tag.objects
# <django.db.models.manager.Manager object at 0x110d70c18>

# 1st query. Returns a queryset, which behaves like a list effectively.
tag_objects_sample = Tag.objects.all()
print(tag_objects_sample)
# [<Tag: Django>, <Tag: Education>, <Tag: Mobile>, <Tag: Video Games>, <Tag: Web>]

