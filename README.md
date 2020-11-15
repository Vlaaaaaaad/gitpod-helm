# Gitpod Helm image

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io#https://github.com/Vlaaaaaaad/gitpod-helm)

Helper image for Helm chart development in [Gitpod](https://gitpod.io).

Tags available:

- `latest` which is the recommended tag( [Gitpod-official images use `latest` too](https://hub.docker.com/r/gitpod/workspace-full/tags))
- `commit-$SHA` which is to be used for development

To use the image, [set it in `.gitpod.yml`](https://www.gitpod.io/docs/42_config_docker/):

```yaml
image: vlaaaaaaad/gitpod-helm:latest
```

## Builtins

The image comes with several helpful tools pre-installed:

- `bash` which is also configured
- [helm](https://helm.sh/) which defaults to version 3, with `helm2` also installed
- [kubeval](https://github.com/instrumenta/kubeval)
- [kubescore](https://github.com/zegl/kube-score)
- [k14s/kbld](https://github.com/k14s/kbld)

---

## Contributing

1. Fork it ([https://github.com/vlaaaaaaad/gitpod-helm/fork](https://github.com/vlaaaaaaad/gitpod-helm/fork))
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

## License

This project is provided under the [MIT License](https://github.com/vlaaaaaaad/gitpod-helm/blob/master/LICENSE.md). See [LICENSE](https://github.com/vlaaaaaaad/gitpod-helm/blob/master/LICENSE.md) for more information.
