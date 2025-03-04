---
title: Home
---

Welcome to the Way Lab at [The University of Colorado Anschutz](https://www.cuanschutz.edu/)!

The mission of our lab is to reduce human suffering.
We develop new computational methods and software for analyzing microscopy images of cells.
With our collaborators around the world, we develop innovative assays and approaches for making sense of high-content microscopy.
We focus on pediatric diseases, including pediatric cancer and Neurofibromatosis Type 1 (NF1), and we also have applications in discovering new treatments for cardiac fibrosis.

We also perform open science, making all of our work immediately open for anyone to use and build upon.

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
