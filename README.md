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
- `zsh` which is also configured, including [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) and [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- [krypt.co](https://krypt.co) for secure SSH and GPG key management
- [helm](https://helm.sh/) 2 and 3
- [kubeval](https://github.com/instrumenta/kubeval)
- [kubescore](https://github.com/zegl/kube-score)
- [k14s/kbld](https://github.com/k14s/kbld)

### Helpful scripts

The scripts are saved in `~/helpers`:

- `~/helpers/setup.sh` which should provide a nice UI and call the others. **Yet to be implemented**
- `~/helpers/setup-ssh-insecure.sh` to setup a SSH key from `ENV_VAR_SSH_PRIVATE_KEY`
- `~/helpers/setup-ssh-krypt.sh` to setup SSH using [krypt.co](https://krypt.co)
- `~/helpers/setup-gpg-insecure.sh` which should setup a GPG key from `ENV_VAR_GPG_PRIVATE_KEY`  **Yet to be implemented**
- `~/helpers/setup-gpg-krypt.sh` to setup GPG using [krypt.co](https://krypt.co)

#### GPG keys

For commit signing, GPG keys are needed.

To help with this there are 2 helper scripts included, with two ways of setting GPG keys:
- *insecure*: having a private GPG key in `$ENV_VAR_GPG_PRIVATE_KEY` configured in personal [Gitpod Environment Variables](https://www.gitpod.io/docs/47_environment_variables/)
- using [krypt.co](https://krypt.co) for secure GPG key management with 2FA

---

## Contributing

1. Fork it ([https://github.com/vlaaaaaaad/gitpod-helm/fork](https://github.com/vlaaaaaaad/gitpod-helm/fork))
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

## License

This project is provided under the [MIT License](https://github.com/vlaaaaaaad/gitpod-helm/blob/master/LICENSE.md). See [LICENSE](https://github.com/vlaaaaaaad/gitpod-helm/blob/master/LICENSE.md) for more information.
