module github.com/Mic92/sops-nix

go 1.14

replace go.mozilla.org/sops/v3 => github.com/colemickens/sops/v3 v3.6.1-0.20200813230452-c5f79836806a

require (
	github.com/mozilla-services/yaml v0.0.0-20191106225358-5c216288813c
	go.mozilla.org/sops/v3 v3.5.0
	golang.org/x/crypto v0.0.0-20200728195943-123391ffb6de
	golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd
)
