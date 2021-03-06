# Sessions

## Sign up

Sign up to register new user

```
POST /sign_up
```

Parameters:

- `username` (required) - The username of user
- `email` (required) - The email of user
- `password` (required) - User password
- `password_confirmation` (required) - User password confirmation


```json
{
  "id": 1,
  "username": "john_smith",
  "email": "john@example.com",
  "fullname": "john_smith",
  "private_token": "dd34asd13as",
  "created_at": "2012-05-23T08:00:58Z"
}
```

### Sign up by wechat

```
POST /sign_up_by_wechat
```

Parameters:

- `openid` (required) - The openid of wechat user
- `username` (optional) - The username of user
- `email` (optional) - The email of user
- `password` (optional) - User password
- `password_confirmation` (optional) - User password confirmation

```json
{
  "id": 1,
  "username": "john_smith",
  "email": "john@example.com",
  "fullname": "john_smith",
  "private_token": "dd34asd13as",
  "created_at": "2012-05-23T08:00:58Z"
}
```

### Sign up temporary

```
POST /sign_up_temporary
```

Parameters:

- None

```json
{
  "id": 1,
  "username": "idea201504172712",
  "email": "idea201504172712@@ideaegg-wechat.com",
  "fullname": "idea201504172712",
  "private_token": "dd34asd13as",
  "created_at": "2012-05-23T08:00:58Z"
}
```

## Sign in

Sign in to get private token

```
POST /sign_in
```

Parameters:

- `login` (required) - The login of user: username or email
- `password` (required) - Valid password

```json
{
  "id": 1,
  "username": "john_smith",
  "email": "john@example.com",
  "fullname": "john_smith",
  "private_token": "dd34asd13as",
  "created_at": "2012-05-23T08:00:58Z"
}
```

### Sign in by wechat

```
POST /sign_in_by_wechat
```

Parameters:

- `openid` (required) - The openid of wechat user

```json
{
  "id": 1,
  "username": "john_smith",
  "email": "john@example.com",
  "fullname": "john_smith",
  "private_token": "dd34asd13as",
  "created_at": "2012-05-23T08:00:58Z"
}
```
