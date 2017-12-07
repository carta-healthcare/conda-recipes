FROM continuumio/miniconda3
ARG upload_user=carta
ENV ANACONDA_USER $upload_user

RUN conda install -y conda-build anaconda-client

WORKDIR /
COPY build-entrypoint.sh /build-entrypoint.sh
COPY build.sh /build.sh
ADD . /recipes
ENTRYPOINT ["/build-entrypoint.sh"]
