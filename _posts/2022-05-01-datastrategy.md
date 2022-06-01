---
title: "Microscopy data playbook"
author: Gregory Way
member: gregory-way
tags:
  - administration
  - process
---

## A suitable and flexible data management strategy is essential for effective and trustworthy science.

Our goal is to maximize access, understanding, analysis speed, and provenance while reducing barriers, unnecessary storage bloat, and cost.

### Data perspectives

We think about data using three different perspectives:

- Level
- Origin
- Flow

Each perspective requires us to think through different considerations for storage, access, and provenance management.
Management practices for microscopy images are related to other data types, with some nuance.
We've previously written extensively about data sharing practices of many different biological data types (including microscopy images) in [Wilson et al. 2021](https://doi.org/10.1002/1873-3468.14067).

#### Level

Your data level indicates the processing stage.
For example, the lowest data level, or “raw” data, are the images acquired by the microscope.
Technically, the biological substrate is the “rawest” data, but we consider the digitization of biological data to be the lowest level.

With biological data, there are many different kinds of intermediate data.
Intermediate data are typically different sizes and thus have different storage requirements.
Each intermediate data type requires unique considerations for access frequency, dissemination, and versioning.

#### Origin

Where your data come from also requires unique management policies.
We use data originating from collaborators (both academic and industry) and data already in the public domain.
Eventually, we will use data that we ourselves collect, but for the moment, we can ignore this origin category.

We need to consider access requirements and restrictions, particularly when using collaborator data.
When storing restricted data, it is helpful to remember that all data will eventually be in the public domain.

#### Flow

Besides the most raw form, data are dynamic and pluripotent; always awaiting new and improved processing capabilities.
To determine short, mid, and long term storage solutions  we need to understand how each specific data level was processed at the specific moment in time (data provenance), and how each data level will ultimately be used.

We also need capabilities to quickly reprocess these data with new approaches.
Consider each data processing step as a new research project, waiting for improvement.

Flow also refers to users and data demand.
We need to consider data analysis activity at each particular moment.
For example, if the data are actively being worked on, multiple people should have immediate access.
We need to align data access demand with storage solutions and computability.

### Microscopy storage solutions

We consider three categories of potential storage solutions for microscopy-associated data:

- Local storage
    - Internal hard drive
    - External hard drive
- Cloud storage
    - Image Data Resource (IDR)
    - Amazon/GC/Azure
    - Figshare/Figshare+
    - Zenodo
    - Github/Github LFS
    - DVC
    - Colorado local cluster
    - One Drive/Dropbox/Google drive
- No storage
     - Immediate deletion

Each storage solution has trade-offs in terms of longevity, access, usage speed, version control, size restrictions, and cost (Table 1).

| Solution              | Longevity    | Version Control | Access          | Usage speed | Size limits                       | Cost                                                                |
|-----------------------|--------------|-----------------|-----------------|-------------|-----------------------------------|---------------------------------------------------------------------|
| Internal hard drive   | Intermediate | No              | Private         | Instant     | <= 18TB (Total)                   | ~$15 per TB one time cost                                 |
| External hard drive   | High         | No              | Private         | Download    | <= 18TB (Total)                   | ~$15 per TB one time cost                                 |
| IDR                   | High         | Yes             | Public          | Download    | >= 2TB (Per dataset)              | Free                                                                |
| AWS/GC/Azure          | Low          | Yes             | Public/Private  | Instant     | >= 2TB (Per dataset)              | $0.02 - $0.04 per GB / Month ($40 to $80 per month per 2TB dataset) |
| Figshare              | High         | Yes             | Public          | Download    | 20GB (Total)                      | Free ([Details](https://help.figshare.com/article/figshare-account-limits))                                                      |
| Figshare+             | High         | Yes             | Public          | Download    | 250GB > x > 5TB (Per dataset)     | $745 > x > $11,860 one time cost ([Details](https://knowledge.figshare.com/plus))                          |
| Zenodo                | High         | Yes             | Public          | Download    | >= 50GB (Per dataset)             | Free ([Details](https://help.zenodo.org/))                                                      |
| Github                | High         | Yes             | Public/Private  | Instant     | >= 100MB (Per file) (Details)     | Free                                                                |
| Github LFS            | Intermediate | Yes             | Public/Private  | Instant     | >= 2GB (up to 5GB for paid plans) | 50GB data pack for $5 per month ([Details](https://docs.github.com/en/billing/managing-billing-for-git-large-file-storage/about-billing-for-git-large-file-storage))                           |
| DVC                   | Intermediate | Yes             | Public/Private  | Download    | None                              | Cost of linked service (AWS/Azure/GC)                               |
| One drive             | Low          | Yes             | Private         | Instant     | >= 5TB (Total)                    | Free to AMC                                                         |
| Dropbox               | Low          | Yes             | Public/Private  | Instant     | Unlimited (Total)                    | $24 per user / month ([Details](https://www.dropbox.com/plans))                                   |
| Google drive          | Low          | Yes             | Public/Private  | Instant     | >= 5TB (Total)                    | $25 per month (5 users)([Details](https://one.google.com/about/plans))                                             |
| Local cluster (RMACC) | Intermediate | No              | Private         | Instant     |                                   |                                                                     |
| Immediate deletion    | None         | None            | None            | None        | None                              | None                                                                |
*Table 1*: _Tradeoffs and considerations for data storage solutions._

### Microscopy data levels

From the raw microscopy image to the variable intermediate data types including single cell and bulk embeddings, each data level has unique data storage and sharing considerations (Figure 1).

{%
  include figure.html
  image="images/blog/data_strategy/data_pipeline.png"
  width="100%"
%}

#### Metadata

Metadata for microscopy experiments have been discussed extenstively, and are exceptionally important for data reproducibility and re-use.
For example, an entire [Nature methods collection was recently devoted to microscopy metadata](https://www.nature.com/collections/djiciihhjh).
Most image-related metadata are stored alongside each image in `.tiff` formats, and many publicly available resources contain detailed instructions on how to access metadata.
This metadata must persist through the different data levels, and most often the metadata are small enough to store easily on github and local machines.
