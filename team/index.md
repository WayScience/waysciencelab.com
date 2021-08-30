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

We are currently hiring several positions.

{% include section.html %}

{%
  include list.html
  data="members"
  component="portrait"
  filters="role: pi"
%}
{%
  include list.html
  data="members"
  component="portrait"
  filters="role: phd"
%}
{%
  include list.html
  data="members"
  component="portrait"
  filters="role: programmer"
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

<!---
## Funding

Our work is made possible by funding from several organizations.
{:.center}

{%
  include gallery.html
  style="square"

  image1="images/photo.jpg"
  link1="https://nasa.gov/"
  tooltip1="Cool Foundation"

  image2="images/photo.jpg"
  link2="https://nasa.gov/"
  tooltip2="Cool Institute"

  image3="images/photo.jpg"
  link3="https://nasa.gov/"
  tooltip3="Cool Initiative"

  image4="images/photo.jpg"
  link4="https://nasa.gov/"
  tooltip4="Cool Foundation"

  image5="images/photo.jpg"
  link5="https://nasa.gov/"
  tooltip5="Cool Institute"

  image6="images/photo.jpg"
  link6="https://nasa.gov/"
  tooltip6="Cool Initiative"
%}
-->
