FROM python:3.9
LABEL maintainer "Kyle Lucy <kmlucy@gmail.com>"

RUN pip install --no-cache-dir tailon

ENTRYPOINT [ "tailon" ]
CMD [ "-b", "0.0.0.0:80", "-f", "/log/*" ]
