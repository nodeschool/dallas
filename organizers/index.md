---
title: Organizers
---

{% for organizer in site.data.organizers %}

- [{{ organizer.name }}]({{ site.data.urls.github }}/{{ organizer.github }})

{% endfor %}
