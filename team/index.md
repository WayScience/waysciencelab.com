---
title: Team
nav:
  order: 3
  tooltip: About our team
---

# <i class="fas fa-users"></i>Team

We welcome, embrace, and are strengthened by diverse views and experiences of all team members.
Our lab is comprised of compassionate scientists who foster a welcoming, inclusive, and healthy environment.
We define success individually for each team member, and we challenge each other to develop and pursue individual passions.

{% include section.html %}

{%
  include list.html
  data="members"
  component="portrait"
  filters="role:pi,group:active"
%}
{%
  include list.html
  data="members"
  component="portrait"
  filters="role:phd,group:active"
%}
{%
  include list.html
  data="members"
  component="portrait"
  filters="role:programmer,group:active"
%}
{%
  include list.html
  data="members"
  component="portrait"
  filters="role:undergrad,group:active"
%}
{:.center}

{% include section.html background="images/banner.jpg" dark=true%}

Come join us!
We encourage all to apply.

{%
  include link.html
  icon="fas fa-users"
  text="Join the Team"
  link="join/"
  style="button"
%}
{:.center}

{% include section.html %}

## Alumni

All of our former team members have made important contributions to our lab and science.
We will always be grateful for the time we spent together and the knowledge they shared!

{% include list.html data="members" component="portrait" filters="group: alum" %}

{% include section.html %}

## Funding

Our work is made possible by the following organizations.

{% capture content %}

[![Alex's Lemonade Stand Foundation](images/alsf_logo.png)](https://www.alexslemonade.org/)

[![Gilbert Family Foundation](images/gff_logo.png)](https://gilbertfamilyfoundation.org/)

[![American Heart Association](images/aha_logo.png)](https://www.heart.org/)

[![Japan Agency for Medical Research and Development](images/amed_logo.jpg)](https://www.amed.go.jp/)

{% endcapture %}

{% include grid.html content=content %}

{% include section.html %}