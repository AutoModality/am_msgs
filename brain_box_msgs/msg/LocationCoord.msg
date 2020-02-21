# Location point, using either the WGS 84 reference ellipsoid or euclidean
uint8 WGS_FRAME=0
uint8 FRU_FRAME=1
uint8 ENU_FRAME=2

# If frame == WGS_FRAME
# coord[LATITUDE] is [degrees]. 
# Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
# coord[LONGITUDE] is [degrees]. 
# Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
# coord[ALT_ABS] is [m]. 
# Positive is above the WGS 84 ellipsoid (NaN if unspecified).
uint8 LATITUDE=0
uint8 LONGITUDE=1
uint8 ALT_ABS=2

# If frame == BODY_FRAME
# coord[FRONT] is meters in front of vehicle, negative being behind
# coord[RIGHT] is meters to the right of the vehicle, negative to the left.
# coord[UP] is meters above vehicle, negative being down
uint8 FRONT=0
uint8 RIGHT=1
uint8 UP=2

# If frame == ENU_FRAME
# coord[EAST] is meters in an easterly direction from some origin
# coord[NORTH] is meters in a northerly direction from some origin
# coord[UP] is meters above some origin
uint8 EAST=0
uint8 NORTH=1

# unique identifier
string id

# frame of reference, one of WGS_FRAME, ENU_FRAME, or BODY_FRAME
uint8 frame

# error region in meters around the location
float64 error

# coordinates as defined above
float64[3] coord