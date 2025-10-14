export CORS_ALLOW_ORIGIN="http://localhost:5173;http://localhost:8080"
PORT="${PORT:-8080}"
export OLLAMA_BASE_URL="http://localhost:11434"
export OPENAI_API_BASE_URL="http://localhost:4000"
export OPENAI_API_KEY="sk-7572"
export VECTOR_DB="pgvector"
export PGVECTOR_INITIALIZE_MAX_VECTOR_LENGTH="1024"
#export CONTENT_EXTRACTION_ENGINE: tika
#export TIKA_SERVER_URL: http://tika:9998
export CONTENT_EXTRACTION_ENGINE="external"
export EXTERNAL_DOCUMENT_LOADER_URL="http://localhost:8000"
export EXTERNAL_DOCUMENT_LOADER_API_KEY=1234
export RAG_EMBEDDING_ENGINE: openai
export RAG_EMBEDDING_MODEL: bedrock-titan-embed-text-2
export RAG_OPENAI_API_BASE_URL: http://localhost:4000
export RAG_OPENAI_API_KEY: sk-7572
export RAG_TOP_K=8
export #RAG_EMBEDDING_ENGINE=ollama
export #RAG_EMBEDDING_MODEL=nomic-embed-text
export #RAG_OLLAMA_BASE_URL="http://localhost:11434"
export CHUNK_SIZE=99999
export WEBUI_SECRET_KEY=some_secret
export ENV=dev
#export REQUESTS_CA_BUNDLE: /etc/ssl/certs/ca-certificates.crt
#export SSL_CERT_FILE: /etc/ssl/certs/ca-certificates.crt
export ENABLE_LDAP=true
export LDAP_SERVER_LABEL="JPL LDAP"
export LDAP_SERVER_HOST="ldap-awsgw1-202007.jpl.nasa.gov"
export LDAP_SERVER_PORT=636
export LDAP_ATTRIBUTE_FOR_MAIL=mail
export LDAP_ATTRIBUTE_FOR_USERNAME=uid
export LDAP_SEARCH_BASE="ou=personnel,dc=dir,dc=jpl,dc=nasa,dc=gov"
export LDAP_VALIDATE_CERT=false
#export LDAP_CA_CERT_FILE: /usr/local/share/JPLCA.crt
export DEFAULT_USER_ROLE=user
export GLOBAL_LOG_LEVEL=DEBUG
export DATABASE_URL="postgresql://openwebui:openwebui@localhost:5432/openwebui"
uvicorn open_webui.main:app --port $PORT --host 0.0.0.0 --forwarded-allow-ips '*' --reload
