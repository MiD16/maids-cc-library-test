curl -X POST http://localhost:8087/LibraryTest/api/patrons \
-H "Content-Type: application/json" \
-d '{
  "name": "Michael Jordan",
  "contactInformation": "michael.jordan@example.com"
}'