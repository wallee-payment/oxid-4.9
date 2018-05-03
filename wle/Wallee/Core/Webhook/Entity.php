<?php
/**
 * Wallee OXID
 *
 * This OXID module enables to process payments with Wallee (https://www.wallee.com/).
 *
 * @package Whitelabelshortcut\Wallee
 * @author customweb GmbH (http://www.customweb.com/)
 * @license http://www.apache.org/licenses/LICENSE-2.0  Apache Software License (ASL 2.0)
 */namespace Wle\Wallee\Core\Webhook;
require_once(OX_BASE_PATH . 'modules/wle/Wallee/autoload.php');

class Entity {
	private $id;
	private $name;
	private $states;
	private $notify_every_change;
	private $handler_class_name;

	public function __construct($id, $name, array $states, $handler_class_name, $notify_every_change = false){
		$this->id = $id;
		$this->name = $name;
		$this->states = $states;
		$this->notify_every_change = $notify_every_change;
		$this->handler_class_name = $handler_class_name;
	}

	public function getId(){
		return $this->id;
	}

	public function getName(){
		return $this->name;
	}

	public function getStates(){
		return $this->states;
	}

	public function isNotifyEveryChange(){
		return $this->notify_every_change;
	}

	public function getHandlerClassName(){
		return $this->handler_class_name;
	}
}