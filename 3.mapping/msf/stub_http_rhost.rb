set SSL false

<ruby>
framework.db.hosts.each do |host|
  host.services.each do |service|
    if service.name == "http" || service.name == "www"
      self.run_single("set RHOST #{host.address}")
      self.run_single("set RPORT #{service.port}")
      self.run_single("run")
    end
  end
end
</ruby>

set SSL true

<ruby>
framework.db.hosts.each do |host|
  host.services.each do |service|
    if service.name == "https" || service.name == "ssl/http"
      self.run_single("set RHOST #{host.address}")
      self.run_single("set RPORT #{service.port}")
      self.run_single("run")
    end
  end
end
</ruby>
