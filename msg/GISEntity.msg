# used to send a message about a GIS entity
uint8 POINT=0
uint8 LINE=1
uint8 AREA=2

# type of entity as defined above
uint8 type

# unique identifier
string id

# vertices of the GIS entity
LocationCoord[] points
