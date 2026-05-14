---
title: Home
---

Welcome to the Way Lab at [The University of Colorado Anschutz](https://www.cuanschutz.edu/)!

Our mission is to reduce human suffering through biomedical data science. We build computational methods and open source software to analyze high-content microscopy images of cells, and we partner with collaborators worldwide to develop innovative assays and approaches for extracting biological meaning from these images. Our disease focus spans pediatric cancer, Neurofibromatosis Type 1 (NF1), and cardiac fibrosis.

We practice open science — all of our code, data, and analyses are immediately available for anyone to use and build upon.

{%
  include link.html
  type="github"
  icon=""
  text="See our open science projects"
  link="wayscience"
  style="button"
%}
{%
  include link.html
  icon="fas fa-users"
  text="Contact us"
  link="contact/"
  style="button"
%}
{:.center}

{% include section.html full=true %}

{% include banner.html image="images/banner.jpg" %}

{% include section.html %}

# Highlights

{% capture text %}
We develop computational methods and innovative approaches to analyze high-content microscopy images of cells.

[Research focus and publications &nbsp;→](research)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/meowwolfcell.jpg"
  link="research"
  headline="Our Research"
  text=text
%}

{% capture text %}
We release public data and open source software and methods to enable reproducible analysis of microscopy images.

[Software &nbsp;→](software)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/network.png"
  link="resources"
  headline="Biomedical software"
  text=text
%}

{% capture text %}
Our lab is a welcoming, diverse, and inclusive team.
We are collaborative, curious, and passionate about our work.

[Meet our lab &nbsp;→](team)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/team.jpeg"
  link="team"
  headline="Our lab"
  text=text
%}
<!---
{%
  include link.html
  type="github"
  icon=""
  text="Website template"
  link="wayscience/lab-website-template"
  style="button"
%}
{:.center}
-->
