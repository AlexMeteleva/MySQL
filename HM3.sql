DROP TABLE IF EXISTS chats;
CREATE TABLE chats(
	id SERIAL,
	name VARCHAR(255),
	admin_user_id BIGINT UNSIGNED NOT NULL,
	
	INDEX (name),
	FOREIGN KEY (admin_user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS users_chats;
CREATE TABLE users_chats(
	user_id BIGINT UNSIGNED NOT NULL,
	chat_id BIGINT UNSIGNED NOT NULL,
	
	PRIMARY KEY (user_id, chat_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (chat_id) REFERENCES chats(id)
);

DROP TABLE IF EXISTS hometowns;
CREATE TABLE hometowns(
	id SERIAL,
	town VARCHAR(255) # 'Moscow', 'NewYork'
);

DROP TABLE IF EXISTS native_languages;
CREATE TABLE native_languages(
	id SERIAL,
	native_language VARCHAR(255) # 'English', 'Russian'
);