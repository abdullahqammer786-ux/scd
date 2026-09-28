-- Create Albums table
CREATE TABLE Albumss (
    AlbumID INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Create Tracks table
CREATE TABLE Track (
    TrackID INT PRIMARY KEY,
    Title VARCHAR(50),
    Duration CHAR(8),
    AlbumID INT NULL,

    CONSTRAINT FK_Tracks_Albums
    FOREIGN KEY (AlbumID)
    REFERENCES Albumss(AlbumID)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

-- Insert data into Albums
INSERT INTO Albumss (AlbumID, Name) VALUES
(1, 'Death Magnetic'),
(4, 'Master Of Puppets');

-- Insert data into Tracks
INSERT INTO Track (TrackID, Title, Duration, AlbumID) VALUES
(1, 'That Was Just Your Life', '00:07:08', 1),
(2, 'The End Of The Line', '00:07:52', 1),
(3, 'The Day That Never Comes', '00:07:56', 1),
(4, 'Battery', '00:05:12', 4);
-- Show Albums table
SELECT * FROM Albumss;

-- Show Tracks table
SELECT * FROM Track;
