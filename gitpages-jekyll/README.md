# Docker Image for Jekyll

## 0. Usages

> Debugging jekyll to deploy on Git-Pages

## 1. Git-Pages Support Versions

- [Dependency versions](https://pages.github.com/versions/)
  - Ruby: 2.7.4
  - Jekyll : 3.9.2

## 2. Run Configuration

### 2.1 Windows

```shell
docker run --rm -d -v "$(PWD):/srv/jasper2" -p 4000:4000 putstack/gitpages-jekyll:1.0.0 jekyll serve --host 0.0.0.0 --livereload --force-polling
```
#### Volume Mount Tips

> If you run on git bash, `/` prefix is required (i.g. "/$(PWD):/srv/jasper2")

#### Command Options

> set jekyll-host up as 0.0.0.0 for local-host   
> and --livereload, --force-polling options help your debugging