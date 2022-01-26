# looking for code that...
# capitalizes all the names in the array (mutation)
# adds those whose (login is <60 AND subsccribed) to usable leads list


mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

counter = 0

######## CAPITALIZES THE NAME ########
loop do
  break if counter == mailing_campaign_leads.size # iterate through array
  
  full_name = mailing_campaign_leads[counter][:name] # extract the full name from the current hash
  # full_name = 'Emma Lopez'

  names = full_name.split # split their name into first and last
  # names = ['Emma', 'Lopez']

  names_counter = 0
  loop do
    break if names_counter == names.size # iterate through the current person's name
    
    name = names[names_counter]
    # name = 'Emma'

    names[names_counter] = name.capitalize
    # names[names_counter] = ['EMMA', 'LOPEZ']

    names_counter += 1
  end
  capitalized_full_name = names.join(' ') 
  # capitalized_full_name = 'EMMA LOPEZ'

  mailing_campaign_leads[counter][:name] = capitalized_full_name
  # set the current person's name equal to capitalized version

  counter += 1
end

######## CONDITIONALLY ADDS PEOPLE TO usable_leads ARRAY ########
# check if login is pretty recent (less than 60 days)
# AND if they are subscribed to the list

usable_leads = []
counter = 0

loop do

  break if counter == mailing_campaign_leads.size # iterate through each person

  last_login = mailing_campaign_leads[counter][:days_since_login] # extract days since last login
  
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list] # extract subscribed or not

  # check if login is pretty recent (less than 60 days)
  # AND if they are subscribed to the list
  if last_login < 60 && subscribed_to_list
    # add the person to usable_leads array
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end