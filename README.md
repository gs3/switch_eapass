## switch_eapass
This gem provides command that switching reference in a number of e-Amusement passes.

## Installation
You can get from rubygems.

```sh
$ gem install switch_eapass
```

## Usage

Execute `switch_eapass` command with e-Amusement card number you want to switch as a argument.


```sh
# Example
# Now you switch reference to the card with number 'AAAA1111BBBB2222'

$ switch_eapass AAAA1111BBBB2222
```

At first time, a editor will be launched to set KONAMI-ID and password.  
(Uses [pit gem](https://github.com/cho45/pit) about it.)
