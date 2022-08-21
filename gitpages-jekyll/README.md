# Docker Image for Jekyll

## 0. Purpose

> Debugging jekyll to deploy on Git-Pages

## 1. How to use

```shell
docker run --rm -d -v "$(PWD):/srv/jasper2" \
-p 4000:4000 \
-p 35729:35729 \
putstack/gitpages-jekyll:1.0.0 \
jekyll serve --host 0.0.0.0 --livereload --force-polling
```

### 1.1. Run with options

#### Expose port

- 4000 : default
- 35729 : for livereload

#### Volume Mount Tips

> If you run on git bash, `/` prefix is required (i.g. "/$(PWD):/srv/jasper2")

#### Command Options

> set jekyll-host up as 0.0.0.0 for local-host   
> and --livereload, --force-polling options help your debugging

## 2. Git-Pages Support Versions

- [Dependency versions](https://pages.github.com/versions/)
  - Ruby: 2.7.4
  - Jekyll : 3.9.2