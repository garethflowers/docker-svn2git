FROM alpine:3.9.2

ENV PACKAGES ruby git git-svn git-perl

RUN apk add --no-cache ruby git git-svn git-perl && \
	gem install svn2git --no-ri --no-rdoc

WORKDIR /svn2git

ENTRYPOINT ["svn2git"]
