Facter.add(:environment) do
    setcode do
        case Facter.value(:hostname)
        when /^acc-dev-/, /^nc-dev-/ then 'dev'
        when /^acc-dev/, /^nc-sql-vmdev/ then 'smoketest'    
        when /^acc-stest/, /^cov-ba/, /^nc-app-balfix/, /^nc-app-pds/, /^acc-sql-bsa/, /^acc-sql-stest/, /^nc-qa/, /^nc-sql-pds/, /^nc-sql-stest/ then 'qa'
        when /^acc-uat/, /^nc-uat/, /^acc-qa-h3/, /^acc-sql-prod2/, /^acc-sql-uatvm/, /^nc-sql-uat/ then 'uat'
        when /^acc-prod/, /^nc-prod/ then 'prod'
        else 'unknown'       
        end    
    end
end