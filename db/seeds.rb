@logger = Logger.new(STDOUT)
@logger.formatter = proc do |_severity, _datetime, _progname, msg|
  msg unless @avoid_log
end

def section(section_title)
  @logger.info section_title
  yield
  log(' ✅')
end

def log(msg)
  @logger.info "#{msg}\n"
end

require_relative 'dev_seeds/headings'

log "All seeds created successfuly 👍"
