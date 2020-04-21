create trigger trArtists
on ARTISTS_SOURCE
after insert, update, delete
as
begin

declare @d int, @i int, @a varchar(10);
select @d = count(1) from deleted;
select @i = count(1) from inserted;

if @d > 0 and @i = 0
begin
   delete ARTISTS
   from ARTISTS a
   join deleted d
   on a.ArtistID = d.ArtistID;

   set @a = 'delete';
end

if @d = 0 and @i > 0
begin
   insert ARTISTS(ArtistID,LastName,FirstName,Age,Country)
   select ArtistID,LastName,FirstName,Age,Country from inserted;
   set @a = 'insert';
end

if @d > 0 and @i > 0
begin
   update ARTISTS
   set ArtistID = i.ArtistID, LastName = i.LastName,
       FirstName = i.FirstName, Age = i.Age, Country = i.Country
   from ARTISTS a
   join inserted i
   on a.ArtistID = i.ArtistID;
   set @a = 'update';
end