=begin

The following code prompts the user to set their own password if they haven't
done so already, and then prompts them to login with that password. However,
the program throws an error. What is the problem and how can you fix it?

Once you get the program to run without error, does it behave as expected?
Verify that you are able to log in with your new password.

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password
end

verify_password



you can't reassign within a method, so password is never updated from nil, we
would need to change the if clause to trigger password = set_password and modify
the method to return the password, not the reassignment of password to new_pass

we also need to have the verify_password method accept an argument so we need to
update the definition to include a password parameter
=end

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)