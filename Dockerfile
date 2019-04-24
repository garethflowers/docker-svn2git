FROM alpine:3.9.2

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
	org.label-schema.docker.cmd="docker run --rm --interactive --tty --volume /home/svn:/svn2git garethflowers/svn2git" \
	org.label-schema.description="svn2git" \
	org.label-schema.name="svn2git" \
	org.label-schema.schema-version="1.0" \
	org.label-schema.url="https://github.com/nirvdrum/svn2git" \
	org.label-schema.vcs-ref=$VCS_REF \
	org.label-schema.vcs-url="https://github.com/garethflowers/docker-svn2git" \
	org.label-schema.vendor="garethflowers" \
	org.label-schema.version="1.0.0"

RUN apk add --no-cache ruby git git-svn git-perl && \
	gem install svn2git --no-ri --no-rdoc

WORKDIR /svn2git

ENTRYPOINT ["svn2git"]
