FROM andrewosh/binder-python-3.5

MAINTAINER Michael J Harms <harms@uoregon.edu>

USER root

# Add dependency
RUN apt-get update

USER main

# Install requirements for Python 3
RUN mkdir .github
RUN git clone https://github.com/harmslab/pytc .github/pytc
RUN pip install -e .github/pytc
RUN pip install matplotlib --upgrade
