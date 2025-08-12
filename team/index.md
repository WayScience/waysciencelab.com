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

{%
  include gallery.html
  style="square"

  image1="images/funding/alsf_logo.png"
  link1="https://www.alexslemonade.org/"
  tooltip1="Alex's Lemonade Stand Foundation"

  image2="images/funding/gff_logo.jpg"
  link2="https://gilbertfamilyfoundation.org/"
  tooltip2="Gilbert Family Foundation NGMI"

  image3="images/funding/aha_logo.jpg"
  link3="https://www.heart.org/"
  tooltip3="American Heart Association"

  image4="images/funding/amed_logo.jpg"
  link4="https://www.amed.go.jp/"
  tooltip4="Japan Agency for Medical Research and Development"

  image5="images/funding/NHLBI_logo.png"
  link4="https://www.nhlbi.nih.gov/"
  tooltip4="National Heart, Lung, and Blood Institute"
%}

{% include section.html %}