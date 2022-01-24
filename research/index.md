---
title: Research
nav:
  order: 1
  tooltip: Published works
---

# <i class="fas fa-microscope"></i>Research

Cells are building blocks of life.
We are building the next generation of data science methods for cell biology.
This means developing software, reproducible pipelines, and inventing analytical approaches to extract biological insights from microscopy images.

We are interested in several specific research avenues:

- Live-cell imaging. After tracking cells through time course experiments, can we observe morphology changes over time? Unlike other biological data types, cell morphology can be measured while the cell is still living. Can we observe specific morphological differences of cellular differentiation in different genetic backgrounds?
- Reproducible pipelines for processing high-dimensional morphology readouts. A major bottleneck in analyzing cell morphology is a lack of data provenance and software documentation. We are building infrastructure to support reproducible, large-scale morphology data processing, and developing specific tools like [pycytominer](https://github.com/cytomining/pycytominer) to normalize cell morphology readouts.
- Publicly-available microscopy data. There are growing resources of publicly available microscopy images (e.g. [Image Data Resource](https://idr.openmicroscopy.org/)). We are developing approaches to increase visibility, access, and computability of publicly available resources, while developing methods to leverage the wealth of existing resources.
- Cell health. Cells are constantly in flux, oscillating between different cell cycle stages, and responding to environmental stimuli. We are developing methods to model different variables of cell health to better inform the impacts of chemical and genetic (e.g. CRISPR) perturbations. Can we model the cell health impacts of compounds with polypharmacology and off-target effects?

## How we do science

How science is performed is sometimes as important as the research topic.
Science hinges on reproducibility, and our procedure maximizes both biological and computational reproducibility.

Biology is messy, but computational biology need not be!

We pursue [open science](https://en.wikipedia.org/wiki/Open_science) to the fullest extent possible in every project.
We submit preprints of our work and subsequently publish in peer-reviewed journals to disseminate knowledge more formally around the world.
For each project, we also share project-specific github repositories (representing a lab notebook) to facilitate computational reproducibility.

We strive for creativity, integrity, inclusivity, and rigor in everything that we do.

See below for a selection of our recent papers.

{% include section.html %}

{% include search-box.html %}

{% include search-info.html %}

{% include list.html data="citations" component="citation" style="rich" %}
