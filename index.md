---
title: Home
---

# Biomedical data science goes "Boink"!

Welcome to the Way Lab at [The University of Colorado Anschutz](https://www.cuanschutz.edu/).
Take your shoes off if you'd like and come on in!
We are currently hiring curious, compassionate, daring, and meticulous scientists to lead the next generation of biomedical research.
Click around to learn more about the lab's vision and focus!

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
  type="github"
  icon=""
  text="Website created by"
  link="wayscience/lab-website-template"
  style="button"
%}
{:.center}

{% include section.html full=true %}

{% include banner.html image="images/banner.jpg" %}

{% include section.html %}

# Highlights

{% capture text %}
We use biomedical data science, software, and machine learning to enhance biological discovery and to improve the human condition.
We develop data-driven approaches to understand disease mechanisms, to personalize treatment strategies, and to reduce human suffering.
We focus on extracting value from biomedical image data, and are currently building the infrastructure required to establish morphology as a systems biology measurement.

[See what we've published &nbsp;→](research)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/photo.jpg"
  link="research"
  headline="Our Research"
  text=text
%}

{% capture text %}
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

[See our resources &nbsp;→](resources)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/photo.jpg"
  link="resources"
  headline="Our Resources"
  text=text
%}

{% capture text %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

[Meet our team &nbsp;→](team)
{:.center}
{% endcapture %}

{%
  include feature.html
  image="images/photo.jpg"
  link="team"
  headline="Our Team"
  text=text
%}
