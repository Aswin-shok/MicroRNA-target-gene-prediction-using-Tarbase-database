
<div id="top"></div>

<h3 align="center">MicroRNA-target-gene-prediction-using-Tarbase</h3>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#usage">Usage</a></li>
      </ul>
    </li>
    <li><a href="#note">Note</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## About The Project
Target gene prediction of miRNA from Tarbase database using simple perl script

<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

* [Perl](https://www.perl.org/)

<p align="right">(<a href="#top">back to top</a>)</p>

## Getting Started
This script uses the bulk downloaded miRNA target-gene prediction database from [Tarbase v8](https://carolina.imis.athena-innovation.gr/diana_tools/web/index.php?r=tarbasev8%2Findex), which you can access from this [link](https://carolina.imis.athena-innovation.gr/diana_tools/web/index.php?r=tarbasev8%2Fdownloaddataform). Contains two files;
1. Input miRNA.txt: Contains tab seperated two columns correseponding to serial number and miRNA name.
2. Tarbase v8 database: Contains tab seperated columns(index) correseponding to 'geneId',	'geneName',	'mirna',	'species',	'cell_line',	'tissue',	'category',	'method',	'positive_negative',	'direct_indirect',	'up_down	condition'
The 'positive_negative' column contains the nature(positive or negative) of regualtion of miRNA on target gene.
![image](https://user-images.githubusercontent.com/93433470/143540299-0785e930-b8a5-4a95-8e56-a1417f999842.png)


### Prerequisites

* Perl
* Latest Tarbase v8 database file [link](https://carolina.imis.athena-innovation.gr/diana_tools/web/index.php?r=tarbasev8%2Fdownloaddataform).
## Usage
* Input the miRNA name corresponding to the serial number.
* Edit the output_file_name in the script.
* Run using perl ./target_gene.pl

<p align="right">(<a href="#top">back to top</a>)</p>

## Note
Please considering editing the script as necessary as your requirement. There could be possible error on matching the character as it relay mainly on the input filetype and structure.
Examples of miRNA names are given, edit the names only.
The output file contains columns 'input miRNA name', 'database matching miRNA name' and all other details present in the database file corresponding to that specific miRNA. 
<p align="right">(<a href="#top">back to top</a>)</p>

## Contact

Your Name - [@aswinpluster](https://twitter.com/aswinpluster) - aswinashok.33.46@gmail.com

Project Link: [https://github.com/Aswin-shok/LabView-stepper-motor-movement-interface](https://github.com/Aswin-shok/LabView-stepper-motor-movement-interface)

<p align="right">(<a href="#top">back to top</a>)</p>
