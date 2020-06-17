# DroidSIFT

Download from [Bitbucket](https://bitbucket.org/muzhang/droidsift/src/master/).

Other links: [PDF](https://www.cs.ucr.edu/~heng/pubs/Zhang-DroidSIFT-CCS14.pdf), [Slides](https://drive.google.com/file/d/1uMi0ERYhXInfoJSQgnMOKzPaZCQFDIt1/view), [(Github) A branch-out from DroidSIFT for Third party lib Diff Analysis](https://github.com/yijiufly/thirdPartyLibAnalysis), [Homepage of the first author](https://sites.google.com/site/muzhang82/), [Homepage of the third author (also DroidScope)](https://www.cs.ucr.edu/~heng/software.html)

What is DroidSIFT?
==================

**DroidSIFT** is a novel semantic-based system that classifies Android malware via dependency graphs. To battle transformation attacks, it extracts a weighted contextual **API Dependency Graph** as program semantics to construct feature sets. To fight against malware variants and zero-day malware, it introduces graph similarity metrics to uncover homogeneous application behaviors while tolerating minor implementation differences. This prototyped system is implemented in 23 thousand lines of Java code. It has been evaluated on 2200 malware samples and 13500 benign samples. Experiments show that **DroidSIFT**'s signature detection can correctly label 93% of malware instances; its anomaly detector is capable of detecting zero-day malware with a low false negative rate (2%) and an acceptable false positive rate (5.15%) for a vetting purpose.

Compilation & Installation
===========


~~~shell
$ cd DroidSIFT # $ chmod -R a+x .
$ ./compile.sh
~~~


Run
=====

~~~shell
$ ./api-graph.sh <file_basename> <temp_dir_for_processing> <input_dir> <file_extension> <android_api_level>
~~~

For example, you can generate API Dependency Graphs for ./ apktest/test.apk with Android v4.2 (API level 17).
~~~shell
$ ./api-graph.sh test testLogger apktest .apk 17
~~~

Related Publication
===========
Mu Zhang, Yue Duan, Qian Feng and Heng Yin, "Towards Automatic Generation of Security-Centric Descriptions for Android Apps", appeared in Proceedings of the 22nd ACM Conference on Computer and Communications Security (**CCS'15**), Denver, Colorado, October 2015.

People
=======
[Mu Zhang](https://sites.google.com/site/muzhang82), email: <mz496@cornell.edu>

[Yue Duan](https://yueduan.github.io/), email: <yduan005@ucr.edu>

[Heng Yin](http://www.cs.ucr.edu/~heng/), email: <heng@cs.ucr.edu>