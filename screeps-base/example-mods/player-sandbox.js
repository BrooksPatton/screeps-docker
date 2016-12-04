// Add a new function to player sandbox space

module.exports = function(config) {
    if(config.engine) {
        config.engine.on('playerSandbox', function(sandbox) {
            sandbox.test = function() {
                sandbox.console.log('Current game tick is:', sandbox.Game.time);
            }
        });
    }
};