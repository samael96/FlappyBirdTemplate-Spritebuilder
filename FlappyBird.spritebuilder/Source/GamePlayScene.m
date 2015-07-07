#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    timeSinceObstacle = 0.0f;
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    //increment the time since the last obstacle was added
    timeSinceObstacle += delta; //delta es 1/60 de segundo
    //comprueba si han pasado 2 segundos:
    if (timeSinceObstacle > 2.0f)
    {
        //se añade otro obstaculo
        [self addObstacle];
        //reset tiempo
        timeSinceObstacle = 0.0f;
        
    }
    
    
    // put update code here
}

// put new methods here
-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    [character flap];
    
}

@end
