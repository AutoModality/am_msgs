SHELL := /bin/bash

default:
	source /opt/ros/melodic/setup.bash && cd catkin_ws && catkin clean -f -i -y && AM_PLATFORM=AM_VM catkin build -j8 --no-status
	rm -f catkin_ws/install/lib/pkgconfig/catkin_tools_prebuild.pc
	@echo "Built!!!!"

install:
	rm -rf catkin_ws/install/share/catkin_tools_prebuild
	install -d $(DESTDIR)/opt/ros/melodic/
	cp -f -p -r catkin_ws/install/lib $(DESTDIR)/opt/ros/melodic || echo "Did not copy lib directory"
	cp -f -p -r catkin_ws/install/share $(DESTDIR)/opt/ros/melodic || echo "Did not copy share directory"
	cp -f -p -r catkin_ws/install/include $(DESTDIR)/opt/ros/melodic || echo "Did not copy include directory"
	rm -f $(DESTDIR)/opt/ros/melodic/lib/pkgconfig/catkin_tools_prebuild.pc

clean:
	@echo "Cleaning"
	rm -rf catkin_ws
