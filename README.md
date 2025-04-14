# Ansible Role: Template

[![CI](https://github.com/AnyLinQ-B-V/template-ansible-role/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/AnyLinQ-B-V/template-ansible-role/actions/workflows/ci.yml)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

A template for creating new Ansible roles.

## Supported Platforms

  - Debian
    - Debian 12 (Bookworm)
    - Debian 13 (Trixie)
  - Ubuntu
    - Ubuntu 22.04 LTS (Jammy)
    - Ubuntu 24.04 LTS (Noble)
  - Enterprise Linux
    - EL 9

## Requirements

  - Ansible >= 2.10
  - Python 3.x

## Role Variables

The default values for the variables are set in `defaults/main.yml`:
```yaml
# Example variable
template_example_variable: "default_value"
```

## Dependencies

None.

## Example Playbook

This example is taken from `molecule/default/converge.yml` and is tested on each push, pull request, and release.
```yaml
- name: Converge
  hosts: all
  become: yes
  gather_facts: yes

  roles:
    - role: anylinq.ansibletemplate
```

## Testing

This role is tested using Molecule with the following test matrix:
  - Debian 12
  - Ubuntu 22.04

### Running Tests Locally

First, install the Python dependencies:
```bash
python -m pip install --upgrade -r requirements.txt
```

Then run the tests for specific distributions:

```bash
# For Debian 12
MOLECULE_DISTRO=debian12 molecule test

# For Ubuntu 22.04
MOLECULE_DISTRO=ubuntu2404 molecule test
```

The CI pipeline automatically tests all supported distributions.

## License

MIT

## Changelog

See [CHANGELOG.md](https://github.com/AnyLinQ-B-V/template-ansible-role/blob/main/CHANGELOG.md) for a list of all notable changes to this project.

## Security

Please see our [Security Policy](https://github.com/AnyLinQ-B-V/template-ansible-role/blob/main/SECURITY.md) for reporting vulnerabilities.

## Contributing

Please read our [Contributing Guide](https://github.com/AnyLinQ-B-V/template-ansible-role/blob/main/CONTRIBUTING.md) and our [Code of Conduct](https://github.com/AnyLinQ-B-V/template-ansible-role/blob/main/CODE_OF_CONDUCT.md) before submitting a Pull Request.

---

<div align="center">
Created and maintained by <a href="https://www.anylinq.com">AnyLinQ B.V.</a><br/><br/>
<a href="https://www.anylinq.com"><img src="https://anylinq.com/hubfs/AnyLinQ%20transparant.png" width="120" alt="AnyLinQ Logo"/></a>
</div>

---

<sub>Author: Ronny Roethof (<a href="mailto:ronny@roethof.net">ronny@roethof.net</a>)</sub>
