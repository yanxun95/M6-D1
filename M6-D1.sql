DROP TABLE IF EXISTS authors;
CREATE TABLE IF NOT EXISTS
authors(
    author_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(50) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	birth_year integer,
	country VARCHAR(50) NOT NULL
);

INSERT INTO public.authors (name, last_name, birth_year, country)
VALUES ('Dan Brown', 'Sacrilege', 1964, 'United States');
INSERT INTO public.authors (name, last_name, birth_year, country)
VALUES ('Agatha', 'Agatha', 1890, 'United Kingdom');
INSERT INTO public.authors (name, last_name, birth_year, country)
VALUES ('Paulo', 'Coelho', 1947, 'Brazil');
INSERT INTO public.authors (name, last_name, birth_year, country)
VALUES ('Ken', 'Follett', 1949, 'United Kingdom');
INSERT INTO public.authors (name, last_name, birth_year, country)
VALUES ('John', 'Grisham', 1955, 'United States');
INSERT INTO public.authors (name, last_name, birth_year, country)
VALUES ('Stephen', 'King', 1947, 'United States');
INSERT INTO public.authors (name, last_name, birth_year, country)
VALUES ('Haruki', 'Murakami', 1949, 'Japan');
INSERT INTO public.authors (name, last_name, birth_year, country)
VALUES ('James', 'Patterson', 1947, 'United States');


INSERT INTO public.books (name, category, cover, published_at, author)
VALUES ('Da Vinci Code', 'Mystery', 'https://images-na.ssl-images-amazon.com/images/I/51nTKunde0L._SX319_BO1,204,203,200_.jpg', '2003-03-18', 1);
INSERT INTO public.books (name, category, cover, published_at, author)
VALUES ('Angels and Demons', 'Mystery', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/5f/AngelsAndDemons.jpg/220px-AngelsAndDemons.jpg', '2000-05-01', 1);
INSERT INTO public.books (name, category, cover, published_at, author)
VALUES ('Inferno', 'Mystery', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Inferno-cover.jpg/200px-Inferno-cover.jpg', '2013-05-14', 1);
INSERT INTO public.books (name, category, cover, published_at, author)
VALUES ('Inferno2', 'Funny', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Inferno-cover.jpg/200px-Inferno-cover.jpg', '2013-05-14', 1);

SELECT name FROM public.books
WHERE category='Mystery'
SELECT name FROM public.books
WHERE name LIKE 'I%'
SELECT name FROM public.books
WHERE name LIKE '%d%'
SELECT name FROM public.authors
WHERE (2021-birth_year)< 60
SELECT name FROM public.authors
WHERE (2021-birth_year)> 40
SELECT category, published_at FROM public.books
SELECT COUNT(*) FROM public.books
SELECT name FROM public.authors
ORDER BY birth_year ASC
SELECT name FROM public.authors
ORDER BY birth_year DESC

DELETE FROM public.authors
WHERE country='Japan'
DELETE FROM public.books
WHERE category='Mystery'
DELETE FROM public.authors
WHERE name LIKE 'H%' --change to first name since there is no last name start with H