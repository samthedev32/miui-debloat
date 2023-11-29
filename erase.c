#include <stdio.h>

int main() {
	FILE *f = fopen("pine.txt", "r");

	if (!f) {
		printf("no file\n");
		return 1;
	}

	char line[64];
	while (fgets(line, sizeof(line), f)) {
		char pkg[64];
		if(sscanf(line, "%[^\n]s", pkg) != 0) {
			char cmd[128];
			sprintf(cmd, "adb shell pm uninstall %s\nadb shell pm uninstall --user 0 %s\n", pkg, pkg);
			system(cmd);
		}
	}
}
