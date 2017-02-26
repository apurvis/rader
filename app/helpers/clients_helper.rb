module ClientsHelper
  def gender_options
    [['Male', 'm'], ['Female', 'f'], ['Other', 'o']]
  end

  def country_options
    @country_options ||= ISO3166::Country.countries.sort_by(&:name).map { |c| [c.name, c.alpha2] }
  end
end
