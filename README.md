# Rails Active Admin

User: admin@example.com
Password: password

** Si tienes problemas ingresando con el usuario por defecto de Active Admin haz esto en la consola de Rails: **

1. user = AdminUser.new
2. user.email = "admin@example.com"
3. user.password = "password"
4. user.save
