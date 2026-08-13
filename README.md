custom CoreDNS config for k3s

forwards the morrisons.site zone to pihole (192.168.68.84) so pods resolve
*.morrisons.site the same way LAN clients do, instead of falling through to
public DNS / Cloudflare

adds a coredns-custom ConfigMap in kube-system, which k3s's built-in CoreDNS
already watches for via Corefile import - doesn't touch or override the
k3s-managed coredns ConfigMap itself
