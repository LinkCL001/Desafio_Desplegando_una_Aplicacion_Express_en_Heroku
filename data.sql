--id (idealmente utilizar extensión de postgres uuid)
--username (debe ser único por usuario)
--email (debe ser único por usuario)
--constraseña
--fecha de creación (automática desde postgres)


CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    username TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

