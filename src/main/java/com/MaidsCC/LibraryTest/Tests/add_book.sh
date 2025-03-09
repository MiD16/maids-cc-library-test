curl -X POST http://localhost:8087/LibraryTest/api/books \
-H "Content-Type: application/json" \
-d '{
  "title": "Hitler",
  "author": "Judy Bloom",
  "publicationYear": 1978,
  "isbn": "9780451524915"
}'