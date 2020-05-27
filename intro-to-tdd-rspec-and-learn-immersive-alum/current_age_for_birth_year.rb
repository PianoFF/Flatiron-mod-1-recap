def current_age_for_birth_year (birthday)
  current_year = (Time.new).year 

  return current_year - birthday 
end