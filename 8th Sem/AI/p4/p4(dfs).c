#include<stdio.h>
int graph[10][10],visited[10],vertex,edge,s[10],visit[10],top,f=1;

void main() 
{
	int n,e,v1,v2,k,source;
	printf("Enter the no of vertex: ");
	scanf("%d",&n);
	printf("Enter the no of edge: ");
	scanf("%d",&e);
	
	printf("Enter the start and end of vextex (in pair): \n");
	for(k=1;k<=e;k++) {
		scanf("%d%d",&v1,&v2);
		graph[v1][v2] = 1;
	}

	printf("Enter the source vertex: ");
	scanf("%d",&source);

	visited[source] = 1;

	k = 1;
	printf("\nOrder of Depth First Search : ");
	printf("%d ",source);
	while(k<n) {
		for(int j=n;j>=1;j--) {
			if(graph[source][j]!=0 && visited[j]!=1 && visit[j]!=1) {
				visit[j] = 1;
				s[top++] = j;
			}
		}
 		source = s[--top];		
		k++;

		printf("%d ",source);

		visit[source] = 0;
		visited[source] = 1;
	}
	printf("\n\n");

}
