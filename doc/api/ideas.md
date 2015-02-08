# Ideas

## List ideas

Get a list of ideas by the authenticated user.

```
GET /ideas
```

Parameters:

- None

```json
[
  {
    "id": 4,
    "title": "hello",
    "content": "world",
    "author": {
      "id": 1,
      "username": "john_smith",
      "email": "john@example.com",
      "fullname": "john_smith"
    },
    "created_at": "2013-09-30T13: 46: 02Z",
    "updated_at": "2013-09-30T13: 46: 02Z"
  },
  {
    "id": 7,
    "title": "another idea",
    "content": "test",
    "author": {
      "id": 1,
      "username": "john_smith",
      "email": "john@example.com",
      "fullname": "john_smith"
    },
    "created_at": "2013-09-30T13: 46: 02Z",
    "updated_at": "2013-09-30T13: 46: 02Z"
  }
]
```

## Get single idea

Get a specific idea, identified by idea ID.

```
GET /ideas/:id
```

Parameters:

- `id` (required) - The ID of an idea

```json
{
  "id": 4,
  "title": "hello",
  "content": "world",
  "author": {
    "id": 1,
    "username": "john_smith",
    "email": "john@example.com",
    "fullname": "john_smith"
  },
  "created_at": "2013-09-30T13: 46: 02Z",
  "updated_at": "2013-09-30T13: 46: 02Z"
}
```

## Create idea

Creates a new idea owned by the authenticated user.

```
POST /ideas
```

Parameters:

- `title` (required) - new idea title
- `content` (required) - new idea content

## Update idea

Update an idea's title or content owned by the authenticated user.

```
PUT /ideas/:id
```

Parameters:

- `id` (required) - The ID of an idea
- `title` (optional) - new title
- `content` (optional) - new content

## Delete idea

Delete an idea owned by the authenticated user.

```
DELETE /ideas/:id
```

Parameters:

- `id` (required) - The ID of an idea

## Like idea

Like an idea by the authenticated user.

```
POST /ideas/:id/like
```

Parameters:

- `id` (required) - The ID of an idea

## Unlike idea

Unlike an idea by the authenticated user.

```
DELETE /ideas/:id/like
```

Parameters:

- `id` (required) - The ID of an idea